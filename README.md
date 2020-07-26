# CommonRegexABAP
[CommonRegex](https://github.com/madisonmay/CommonRegex/ "CommonRegex") port for ABAP

Find a lot of kinds of common information in a string.

Pull requests welcome!

Please note that this is currently English/US specific.

### Installation

Install this repository using [abapGit](https://github.com/larshp/abapGit#abapgit).

### API
Create an instance of class ZCL_COMMONREGEX and call one of the public methods:
* `get_dates()`
* `get_times()`
* `get_phones()`
* `get_links()`
* `get_emails()`
* `get_ipv4()`
* `get_ipv6()` (currently in progress)
* `get_hex_colors()`
* `get_acronyms()`
* `get_money()`
* `get_percentages()` 
* `get_credit_cards()` (currently in progress)
* `get_addresses()`

```abap
    DATA: l_text type string.
    ...
    mo_cut = NEW #( l_text ).

    DATA(lt_data) = mo_cut->get_dates().

```