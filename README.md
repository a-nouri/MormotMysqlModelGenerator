By executing this sql, you can generate mormot2 model class for mysql database tables.

For example :

published
  <br> property count_code: RawUtf8 index 5 read Fcount_code write Fcount_code;
  <br> property count_name: RawUtf8 index 40 read Fcount_name write Fcount_name;
  property capital: TNullableUtf8Text index 20 read Fcapital write Fcapital;</p>
  <p>property curr_code: RawUtf8 index 5 read Fcurr_code write Fcurr_code;</p>
  <p>property tel_perfix: RawUtf8 index 10 read Ftel_perfix write Ftel_perfix;</p>
  <p>property code_for_tax: TNullableUtf8Text index 2 read Fcode_for_tax write Fcode_for_tax;</p>
  <p>property buy_sale_code: TNullableUtf8Text index 10 read Fbuy_sale_code write Fbuy_sale_code;</p>
  <p>property new_tax_code: TNullableUtf8Text index 3 read Fnew_tax_code write Fnew_tax_code;</p>

