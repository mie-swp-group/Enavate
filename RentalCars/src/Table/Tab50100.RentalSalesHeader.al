table 50100 "Rental Sales Header"
{
    Caption = 'Rental Sales Header';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Sales Header";
    DrillDownPageId = "Rental Sales Header";
    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
        }
        field(2; "Salesperson Name"; Code[20])
        {
            Caption = 'Salesperson Name';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser"."No.";

        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Order No.")
        {
            Clustered = true;
        }
    }

}
