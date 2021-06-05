table 50140 "Date Formula"
{
    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(10; "Reference for Date Calculation"; Date)
        {
            trigger OnValidate()
            begin
                CalculateNewDate;
            end;
        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate()
            begin
                CalculateNewDate;
            end;
        }
        field(30; "Date Result"; Date) { }
    }
    //       keys
    // {
    //   key(Key1; MyField)
    //   {
    //      Clustered = true;
    //  }
    // }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation");
    end;
}