import argparse
import psycopg2
import jinja2
import toml

from psycopg2.extras import DictCursor


parser = argparse.ArgumentParser(description='Chagall - Turn your data into something beautiful')
parser.add_argument('template_file', type=str, help='Template file name')
parser.add_argument('output_file', type=str, help='Output file name')
args = parser.parse_args()


config = toml.load("config.toml")

connection = psycopg2.connect(
    host=config["host"],
    database=config["database"],
    user=config["user"],
    password=config["password"],
    cursor_factory=DictCursor)

cursor = connection.cursor()


def fetchone(query, params):
    cursor.execute(query, params)
    result = cursor.fetchone()
    return result

def fetchall(query):
    cursor.execute(query)
    results = cursor.fetchall()
    return results


template_loader = jinja2.FileSystemLoader(searchpath=".")
templateEnv = jinja2.Environment(loader=template_loader)
template = templateEnv.get_template(args.template_file)

template.globals['fetchone'] = fetchone
template.globals['fetchall'] = fetchall

output_text = template.render()

with open(args.output_file, 'w') as file:
    file.write(output_text)
