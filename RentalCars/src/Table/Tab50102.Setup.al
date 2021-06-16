table 50102 "Setup"
{
    Caption = 'Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Order Nos."; Code[20])
        {
            Caption = 'Order Nos.';
            DataClassification = CustomerContent;
        }
        field(3; "Posted Order Nos."; Code[20])
        {
            Caption = 'Posted Order Nos.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}
