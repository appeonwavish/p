$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type st_2 from statictext within w_test
end type
type dw_2 from datawindow within w_test
end type
type dw_1 from datawindow within w_test
end type
type st_1 from statictext within w_test
end type
end forward

global type w_test from window
integer width = 2688
integer height = 2108
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_2 st_2
dw_2 dw_2
dw_1 dw_1
st_1 st_1
end type
global w_test w_test

on w_test.create
this.st_2=create st_2
this.dw_2=create dw_2
this.dw_1=create dw_1
this.st_1=create st_1
this.Control[]={this.st_2,&
this.dw_2,&
this.dw_1,&
this.st_1}
end on

on w_test.destroy
destroy(this.st_2)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.st_1)
end on

type st_2 from statictext within w_test
integer x = 18
integer y = 1828
integer width = 590
integer height = 156
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "row: "
boolean focusrectangle = false
end type

type dw_2 from datawindow within w_test
event ue_postclick ( long al_row )
integer x = 18
integer y = 1012
integer width = 2610
integer height = 796
integer taborder = 30
boolean titlebar = true
string title = "DataWindow ~"datawindow~" (Post Event ue_PostClick(row))"
string dataobject = "dw_inquiry_items_edit_list_datawindow"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

event ue_postclick(long al_row);integer 	li_return;

If (al_row > 0) And (al_row <= RowCount()) Then
	SelectRow(0, False);
	
	li_return = SetRow(al_row);
	parent.st_2.text = "setrow return = "+string(li_return)+"  row="+string(al_row);
	
	If (GetRow() = al_row) Then SelectRow(al_row, True);
Else
	parent.st_2.text = "setrow return = (None)  row="+string(al_row);
End if
end event

event clicked;
Post Event ue_PostClick(row);
end event

event constructor;long i, ll_row;

FOR i = 1 TO 10
	ll_row = InsertRow(0);
	SetItem(ll_row, 'o_request_list_order_no_per_year', string(ll_row, '0000'));
	SetItem(ll_row, 'o_request_list_str_name1', string(ll_row, 'Equipment 0000'));
	SetItem(ll_row, 'o_offers_stock_unit', 'PCS');
	SetItem(ll_row, 'amount_suppl_offer',  ll_row);
	SetItem(ll_row, 'purchase_unit', 'BOX');
	SetItem(ll_row, 'unit_conversion_factor',  ll_row);
	SetItem(ll_row, 'price_one_unit',  ll_row * 5);
	SetItem(ll_row, 'currencies_short_name', 'EUR');
	SetItem(ll_row, 'discount', ll_row * 0.5);
	SetItem(ll_row, 'currencies_short_name_1', 'USD');
	SetItem(ll_row, 'request_kopf_request_code', string(ll_row, 'RFQ-0000'));
	SetItem(ll_row, 'offer_supplier_sent_date', Today());
	SetItem(ll_row, 'order_code_of_supplier', string(ll_row, 'OCS-0000'));
	SetItem(ll_row, 'o_request_list_str_item_no', string(ll_row, 'SPN-0000'));
	SetItem(ll_row, 'o_request_list_str_item_no', string(ll_row, 'EIN-0000'));
	SetItem(ll_row, 'o_request_list_str_part_no', string(ll_row, 'EPN-0000'));
	SetItem(ll_row, 'o_request_list_str_draw_no', string(ll_row, 'EDN-0000'));
	SetItem(ll_row, 'o_request_list_str_company_number', string(ll_row, 'ECN-0000'));
	SetItem(ll_row, 'o_offers_remark', string(ll_row, 'Remark 0000'));
	SetItem(ll_row, 'delivery_days', ll_row);
NEXT
end event

type dw_1 from datawindow within w_test
integer x = 18
integer y = 112
integer width = 2610
integer height = 796
integer taborder = 20
boolean titlebar = true
string title = "DataWindow ~"datawindow~" (Event clicked(...))"
string dataobject = "dw_inquiry_items_edit_list_datawindow"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

event clicked;integer 	li_return;

If (row > 0) And (row <= RowCount()) Then
	SelectRow(0, False);
	
	li_return = SetRow(row);
	parent.st_1.text = "setrow return = "+string(li_return)+"  row="+string(row);
	
	If (GetRow() = row) Then SelectRow(row, True);
Else
	parent.st_1.text = "setrow return = (None)  row="+string(row);
End if

return 0;
end event

event constructor;
long i, ll_row;

FOR i = 1 TO 10
	ll_row = InsertRow(0);
	SetItem(ll_row, 'o_request_list_order_no_per_year', string(ll_row, '0000'));
	SetItem(ll_row, 'o_request_list_str_name1', string(ll_row, 'Equipment 0000'));
	SetItem(ll_row, 'o_offers_stock_unit', 'PCS');
	SetItem(ll_row, 'amount_suppl_offer',  ll_row);
	SetItem(ll_row, 'purchase_unit', 'BOX');
	SetItem(ll_row, 'unit_conversion_factor',  ll_row);
	SetItem(ll_row, 'price_one_unit',  ll_row * 5);
	SetItem(ll_row, 'currencies_short_name', 'EUR');
	SetItem(ll_row, 'discount', ll_row * 0.5);
	SetItem(ll_row, 'currencies_short_name_1', 'USD');
	SetItem(ll_row, 'request_kopf_request_code', string(ll_row, 'RFQ-0000'));
	SetItem(ll_row, 'offer_supplier_sent_date', Today());
	SetItem(ll_row, 'order_code_of_supplier', string(ll_row, 'OCS-0000'));
	SetItem(ll_row, 'o_request_list_str_item_no', string(ll_row, 'SPN-0000'));
	SetItem(ll_row, 'o_request_list_str_item_no', string(ll_row, 'EIN-0000'));
	SetItem(ll_row, 'o_request_list_str_part_no', string(ll_row, 'EPN-0000'));
	SetItem(ll_row, 'o_request_list_str_draw_no', string(ll_row, 'EDN-0000'));
	SetItem(ll_row, 'o_request_list_str_company_number', string(ll_row, 'ECN-0000'));
	SetItem(ll_row, 'o_offers_remark', string(ll_row, 'Remark 0000'));
	SetItem(ll_row, 'delivery_days', ll_row);
NEXT
end event

type st_1 from statictext within w_test
integer x = 18
integer y = 836
integer width = 590
integer height = 156
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "row: "
boolean focusrectangle = false
end type

