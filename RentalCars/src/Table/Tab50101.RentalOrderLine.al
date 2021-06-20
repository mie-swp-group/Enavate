table 50101 "Rental Order Line"
{
    Caption = 'Rental Order Line';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Order Line";
    DrillDownPageId = "Rental Order Line";

    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
            TableRelation = "Rental Order Header";
            Editable = false;
        }
        field(2; "Line No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation = "Item";
            trigger OnValidate()
            begin
                CopyFormItem();
            end;
        }
        field(4; "Item Description"; Text[100])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Item.Description where("No." = field("Item No.")));
            Editable = false;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin

                UpdateLineAmount();
            end;
        }
        field(6; "Price a day"; Decimal)
        {
            Caption = 'Price a day';
            DataClassification = CustomerContent;
        }
        field(7; "Line Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Order No.", "Line No.")
        {
            Clustered = true;
        }
    }
    local procedure UpdateLineAmount()
    begin
        Rec.Validate("Line Amount", Quantity * "Price a day");
    end;

    local procedure CopyFormItem()
    var
        Item: Record Item;
    begin
        if "Item No." = '' then
            exit;
        Item.Get("Item No.");
        Rec.Validate("Price a day", Item."Unit Price");
    end;

}
