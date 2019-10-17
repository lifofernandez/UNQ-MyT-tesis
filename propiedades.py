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

propiedades = [ 
  'props_pista',
  'props_articulaciones',
  'props_unidad',
]

for p in propiedades:
  prop = yaml.load(
    open( p + '.yml', 'r' ), 
    Loader = yaml.FullLoader
  ) 
  ordenado = {};
  for k in sorted(prop, key=str.lower):
    ordenado[k] = prop[k]
  with open( p + '.tex', "w" ) as tex:
    tex.write( template.render( PROPS = ordenado ) )

# PROPS_PISTA  = yaml.load( open( 'props_pista.yml', 'r' ) ) 
# with open( 'props_pista.tex', "w" ) as tex:
#   tex.write( template.render( PROPS = PROPS_PISTA ) )
# 
# PROPS_UNIDAD = yaml.load( open( 'props_unidad.yml', 'r' ) ) 
# with open( 'props_unidad.tex', "w" ) as tex:
#   tex.write( template.render( PROPS = PROPS_UNIDAD ) )
# 
# PROPS_ARTICULACIONES = yaml.load( open( 'props_articulaciones.yml', 'r' ) ) 
# with open( 'props_articulaciones.tex', "w" ) as tex:
#   tex.write( template.render( PROPS = PROPS_ARTICULACIONES ) )
