table 50100 "Rental Order Header"
{
    Caption = 'Rental Order Header';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Order Header";
    DrillDownPageId = "Rental Order Header";
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
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
            TableRelation = Customer;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(79; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.Name WHERE("No." = field("Customer No.")));
            //TableRelation = Customer.Name;

        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}
