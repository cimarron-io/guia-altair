{% extends 'markdown.tpl' %}

<!-- Add class for input area -->
{% block input %}
{% if cell.source != '' %}
{:.input_area}
```
{%- if 'magics_language' in cell.metadata  -%}
    {{ cell.metadata.magics_language}}
{%- elif 'name' in nb.metadata.get('language_info', {}) -%}
    {{ nb.metadata.language_info.name }}
{%- endif %}
{{ cell.source }}
```
{% endif %}
{% endblock input %}

<!-- Remove indentations for output text  -->
{% block stream %}
{:.output_stream}
```
{{ output.text }}
```
{% endblock stream %}


{% block data_text %}
{:.output_data_text}
```
{{ output.data['text/plain'] }}
```
{% endblock data_text %}


{% block traceback_line  %}
{:.output_traceback_line}
```
{{ line | strip_ansi }}
```
{% endblock traceback_line  %}

{% block data_html %}
<div markdown="0">
{{ output.data['text/html'] }}
</div>
{% endblock data_html %}


{% block header %}
  <script src="https://cdn.jsdelivr.net/npm/vega@3"></script>
  <script src="https://cdn.jsdelivr.net/npm/vega-lite@2"></script>
  <script src="https://cdn.jsdelivr.net/npm/vega-embed@3"></script>
  {{super()}}
{% endblock header %}

{%- block data_priority scoped -%}
{% if 'application/vnd.vegalite.v2+json' in output.data %}
    <div id="vis{{cell['execution_count']}}"></div>
    <script type="text/javascript">
        var spec = {{ output.data['application/vnd.vegalite.v2+json'] }};
        var opt = {"renderer": "canvas", "actions": false};
        vegaEmbed("#vis{{cell['execution_count']}}", spec, opt);
    </script>
{% else %}
    {{super()}}
{% endif %}
{%- endblock data_priority -%}