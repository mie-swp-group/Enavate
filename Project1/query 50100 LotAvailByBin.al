query 50100 "Lot Avail. by Bin"
{
    QueryType = Normal;

    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")
        {
            column(Item_No; "Item No.") { }
            column(Lot_No; "Lot No.") { }
            dataitem(Warehouse_Entry; "Warehouse Entry")
            {
                DataItemLink = "Location Code" = Item_Ledger_Entry."Location Code",
                "Item No." = Item_Ledger_Entry."Item No.",
                "Lot No." = Item_Ledger_Entry."Lot No.";
                column(Entry_No_; "Entry No.") { }
                column(Location_Code; "Location Code") { }
                column(Zone_Code; "Zone Code") { }
                column(Bin_Code; "Bin Code") { }
                column(Sum_Quantity; Quantity) { Method = Sum; }
                dataitem(Bin; Bin)
                {
                    DataItemLink = Code = Warehouse_Entry."Bin Code";
                    dataitem(Bin_Type; "Bin Type")
                    {
                        DataItemLink = Code = Bin.Code;
                        DataItemTableFilter = Pick = const(true);
                    }
                }
            }
        }
    }
    //     internal procedure MethodName(var VarName: Record TableName);
    //     var
    //         Handled: Boolean;
    //     begin
    //         OnBeforeMethodName(VarName, Handled);

    //         DoMethodName(VarName, Handled);

    //         OnAfterMethodName(VarName);
    //     end;

    //     local procedure DoMethodName(var VarName: Record TableName; Handled: Boolean);
    //     begin
    //         if Handled then
    //             exit;

    //     end;

    //     [IntegrationEvent(false, false)]
    //     local procedure OnBeforeMethodName(var VarName: Record TableName; var Handled: Boolean);
    //     begin
    //     end;

    //     [IntegrationEvent(false, false)]
    //     local procedure OnAfterMethodName(var VarName: Record TableName);
    //     begin
    //     end;
    // }
    //             }
    //             filter(FilterName; SourceFieldName)
    //             {

    //             }
    //         }
    //     }

    //     var
    //         myInt: Integer;

    //     trigger OnBeforeOpen()
    //     begin

    //     end;
}