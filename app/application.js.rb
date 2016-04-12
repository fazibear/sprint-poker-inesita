require 'inesita'
require 'phoenix'

require 'browser'
require 'browser/storage'

require 'virtual_dom/external_support/browser'

require_tree './operations'
require_tree './components'
require_tree './screens'

require 'config'
require 'router'
require 'store'
require 'layout'

$document.ready do
  Inesita::Application.new(
    router: Router,
    store: Store,
    layout: Layout
  ).mount_to($document.body)
end
