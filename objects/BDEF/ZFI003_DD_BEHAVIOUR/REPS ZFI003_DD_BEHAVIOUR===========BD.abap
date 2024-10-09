unmanaged implementation in class zfi003_cl_dd_behaviour unique;
strict ( 1 );

define behavior for ZFI003_DD_Behaviour alias behaviour
late numbering
lock master
authorization master ( instance )
{
  field ( readonly ) dummy;
  //  create;
  //  update;
  //  delete;

  //action kur_farki deep parameter ZFI003_DD_Header deep result [1] ZFI003_DD_Header;
  action kur_farki deep parameter ZFI003_DD_Header;
  //  action kur_farki;
}