tableextension 50102 "Rental Customer" extends Customer
{
    fields
    {
        field(50100; Discount; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;

        }
    }
}
