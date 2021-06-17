table 50101 "Rental Order Line"
{
    Caption = 'Rental Order Line';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Order Line";
    DrillDownPageId = "Rental Order Line";

    fields
    {
        field(1; "LIne No."; Code[20])
        {
            Caption = 'LIne No.';
            DataClassification = CustomerContent;
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(4; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(5; Price; Integer)
        {
            Caption = 'Price';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "LIne No.")
        {
            Clustered = true;
        }
    }

}
