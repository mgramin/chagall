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
python chagall.py templates/big_tables/quickchart.html.j2 docs/examples/big_tables/quickchart.html
python chagall.py templates/big_tables/chartjs.html.j2 docs/examples/big_tables/chartjs.html

python chagall.py templates/er_diagram/mermaid.html.j2 docs/examples/er_diagram/mermaid.html
```


### Recomended VS Code plugins
- [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) - Syntax highlighting for jinja(2) including HTML, SQL, JSON, Markdown and other templates.
