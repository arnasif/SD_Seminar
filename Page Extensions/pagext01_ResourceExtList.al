pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible = ShowMaxfield;
            }
        }
    }
    
      trigger OnOpenPage()
    begin
        ShowType := (GetFilter(type) = '');
        ShowMaxfield := (GetFilter(type)) = format(type::Machine)
    end;
    var
        [InDataSet]
        ShowMaxfield : Boolean;
        [InDataSet]
        ShowType : Boolean;
}