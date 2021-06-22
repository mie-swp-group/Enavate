table 50100 "Rental Order"
{
    Caption = 'Rental Order';
    DataClassification = CustomerContent;
    LookupPageId = "Rental Orders";
    DrillDownPageId = "Rental Orders";
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    GetRentalSetup();//!
                    NoSeriesMgt.TestManual(GetNoSeriesCode());//!
                                                              // "No. Series" := '';
                end;
            end;
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
        field(5; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            // Editable = false;
            // FieldClass = FlowField;
            //CalcFormula = Lookup(Customer.Name WHERE("No." = field("Customer No.")));
            TableRelation = Customer.Name;
            ValidateTableRelation = false;
            trigger OnLookup()
            var
            //Customer: Record Customer;
            begin
                //Customer.Get();
                //Validate("Customer No.");

            end;
        }
        field(6; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        InitInsert();
    end;

    procedure InitInsert()
    var
    //  IsHandled: Boolean;
    begin
        if "No." = '' then begin
            TestNoSeries();//!
            NoSeriesMgt.InitSeries(GetNoSeriesCode(), xRec."No. Series", 0D, "No.", "No. Series");//!
        end;
    end;

    local procedure TestNoSeries()
    begin
        GetRentalSetup();//!
        RentalSetup.Testfield("Order Nos.");

    end;

    local procedure GetRentalSetup()
    begin
        if RentalSetup.Get() then
            exit;
        RentalSetup.Init();
        RentalSetup.Insert(true);
        Commit();
    end;

    procedure GetNoSeriesCode(): Code[20]
    var
    //   NoSeriesCode: Code[20];
    begin
        exit(NoSeriesMgt.GetNoSeriesWithCheck(RentalSetup."Order Nos.", false, "No. Series"));
    end;

    var
        RentalSetup: Record "Rental Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

}
