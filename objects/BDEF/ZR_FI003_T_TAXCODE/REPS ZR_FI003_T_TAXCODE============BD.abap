managed implementation in class ZBP_R_FI003_T_TAXCODE unique;
strict ( 2 );
with draft;
define behavior for ZR_FI003_T_TAXCODE
persistent table zfi003_t_taxcode
draft table ZFI003_T_TAXCO_D
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )

{
  field ( mandatory : create )
   TaxCode;

  field ( readonly )
   LocalCreatedAt,
   LocalCreatedBy,
   LastChangedAt,
   LocalLastChangedAt,
   LocalLastChangedBy;

  field ( readonly : update )
   TaxCode;


  create;
  update;
  delete;

  draft action Edit;
  draft action Activate optimized;
  draft action Discard;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZFI003_T_TAXCODE
  {
    TaxCode = tax_code;
    TaxType = tax_type;
    MoveType = move_type;
    Percent = percent;
    DebitCredit = debit_credit;
    LocalCreatedBy = local_created_by;
    LocalCreatedAt = local_created_at;
    LocalLastChangedBy = local_last_changed_by;
    LocalLastChangedAt = local_last_changed_at;
    LastChangedAt = last_changed_at;
  }
}