# Chagall

Chagall is a dramatically simple Python-script with a bunch of predefined SQL-scripts and Jinja2 templates for turning your data into something beautiful (docs, charts, diagrams, configurations etc.)


## How to run it

Init and activate virtual env (optional):
```
virtualenv .venv
source .venv/bin/activate
```

Install dependencies:
```
pip3 install -r requirements.txt
```

Run:
```
python chagall.py -h
```

## SQL scripts conventions

- Use Python-style naming for parameters: `%(schema_name)s`, `%(max_table_count)s`
- Keep to [axis](https://gramin.pro/posts/rivers-and-axis) when formatting


## Explore examples

### Generate documentation

```
python chagall.py templates/tables_doc/tables.html.j2 docs/examples/tables_doc/tables.html
python chagall.py templates/tables_doc/tables.adoc.j2 docs/examples/tables_doc/tables.adoc
```

### Generate charts

```
python chagall.py templates/big_tables/quickchart.html.j2 docs/examples/big_tables/quickchart.html
python chagall.py templates/big_tables/chartjs.html.j2 docs/examples/big_tables/chartjs.html
```

### Generate diagrams

```
python chagall.py templates/er_diagram/mermaid.md.j2 docs/examples/er_diagram/mermaid.md
python chagall.py templates/er_diagram/diagram.plantuml.j2 docs/examples/er_diagram/diagram.plantuml
```


### Recomended VS Code plugins

- [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) - Syntax highlighting for jinja(2) including HTML, SQL, JSON, Markdown and other templates.
