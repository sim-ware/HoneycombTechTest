require './lib/order'
require './lib/price'
x = Order.new
x.clock_number('WNP/SWCL001/010')
x.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
x.express_delivery_companies('Horse & County')
x.pricing

y = Order.new
y.clock_number('ZDW/EOW005/010')
y.express_delivery_companies('Disney', 'Discovery', 'Viacom')
y.pricing
