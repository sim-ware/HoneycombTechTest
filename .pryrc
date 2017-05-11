require './lib/order'
x = Order.new
x.clock_number('WNP/SWCL001/010')
x.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
x.express_delivery_companies('Horse & County')
# x.pricing

y = Order.new
y.clock_number('ZDW/EOW005/010')
y.express_delivery_companies('Disney', 'Discovery', 'Viacom')
# y.pricing

p = Pricer.new
p.pricing(x)
p.pricing(y)

d = Discounter.new
d.discounter_a(x)
d.discounter_b(x)
d.discounter_a(y)
d.discounter_b(y)
