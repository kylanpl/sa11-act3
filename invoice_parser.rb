def parse_invoices(invoice_data)
  # It specifically says invoice NUMBERS are alphanumeric, so I'm allowing for letters in the invoice NUMBER, not just counting INV
  pattern = /(\d{4}-\d{2}-\d{2}) - (INV\w+) - ([^\-]+) - (\$\d+)/
  invoices = invoice_data.scan(pattern)
  invoices.each do |invoice|
    puts "Date: #{invoice[0]}\n Invoice Number #{invoice[1]}\n Company: #{invoice[2]}\n Amount: #{invoice[3]}"
    puts "---"
  end

end
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES
parse_invoices(invoice_entries)
