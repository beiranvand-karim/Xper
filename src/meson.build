xper_sources = [
  'main.vala',
  'MyWindow.vala',
]

xper_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

xper_sources += gnome.compile_resources('xper-resources',
  'xper.gresource.xml',
  c_name: 'xper'
)

executable('xper', xper_sources,
  vala_args: '--target-glib=2.50',  dependencies: xper_deps,
  install: true,
)
