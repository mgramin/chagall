# Chagall

Turn your data into something beautiful


## How to Run

Init and activate virtual env (optional):
```
virtualenv .venv
source .venv/bin/activate
```

Install dependencies:
```
pip3 install -r ./requirements.txt
```

Run:
```
python ./chagall.py -h
```


## Examples

Explore examples:
```
python chagall.py templates/tables_doc/tables.html.j2 docs/examples/tables_doc/tables.html
python chagall.py templates/tables_doc/tables.adoc.j2 docs/examples/tables_doc/tables.adoc

python chagall.py templates/big_tables/quickchart.html.j2 docs/examples/big_tables/quickchart.html
python chagall.py templates/big_tables/chartjs.html.j2 docs/examples/big_tables/chartjs.html

python chagall.py templates/er_diagram/mermaid.md.j2 docs/examples/er_diagram/mermaid.md
python chagall.py templates/er_diagram/diagram.plantuml.j2 docs/examples/er_diagram/diagram.plantuml
```


### Recomended VS Code plugins
- [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) - Syntax highlighting for jinja(2) including HTML, SQL, JSON, Markdown and other templates.
