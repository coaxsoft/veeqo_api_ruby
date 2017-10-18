@warehouse = Veeqo::Warehouse.all.first
@sellable = @order[:line_items].first[:sellable]

# Update stock entry
Veeqo::StockEntry.update(@sellable.id, @warehouse.id, location: 'New Zeland')
