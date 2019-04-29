#!/usr/bin/env python

import pprint
import yaml
import jinja2
import os
from jinja2 import Template

latex_jinja_env = jinja2.Environment(
        block_start_string = '\BLOCK{',
        block_end_string = '}',
        variable_start_string = '\VAR{',
        variable_end_string = '}',
        comment_start_string = '\#{',
        comment_end_string = '}',
        line_statement_prefix = '%%',
        line_comment_prefix = '%#',
        trim_blocks = True,
        autoescape = False,
        loader = jinja2.FileSystemLoader(os.path.abspath('.'))
)
template = latex_jinja_env.get_template( 'props_tmpl.tex' )

def leer_yamls():
  props = {}
  fichero_yaml = 'props_pista.yml'
  data = open( fichero_yaml, 'r' )
  try:
    y = yaml.load( data ) 
    props = y 
  except Exception as e:
    print(e)
    print( "=" * 80)
    pass
  return props
PROPS_PISTA = leer_yamls()

salida = template.render( PROPS = PROPS_PISTA )
print(salida)
nombre_archivo = 'props_pista'
with open( nombre_archivo + ".tex", "w" ) as tex:
   tex.write( salida )


