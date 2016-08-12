require 'bootstrap-sass'

css_dir  = "css"
sass_dir = "sass"

# Environment defaults to :development
# environment = :production

# You can select your preferred output style here (can be overridden via the
# command line):
# output_style = :expanded or :nested or :compact or :compressed

output_style = (environment == :production) ? :compressed : :expanded

# You can enable relative paths to assets via compass helper functions.
# relative_assets = true

# You can disable debugging comments that display the original location of
# your selectors.

line_comments = false

# Preferred syntax defaults to :scss
# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass

# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass