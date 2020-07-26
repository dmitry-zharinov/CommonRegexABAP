# CommonRegexABAP
CommonRegex port for ABAP

[CommonRegex](https://github.com/madisonmay/CommonRegex/ "CommonRegex") port for ABAP

Find a lot of kinds of common information in a string.

Pull requests welcome!

Please note that this is currently English/US specific.

### Installation

Install this repository using [abapGit](https://github.com/larshp/abapGit#abapgit).

### API

Instance methods will return the results relative to the text passed at the constructor:
* `get_dates(text)`
* `get_times(text)`
* `get_phones(text)`
* `get_links(text)`
* `get_emails(text)`
* `get_ipv4(text)`
* `get_ipv6(text)` (currently in progress)
* `get_hex_colors(text)`
* `get_acronyms(text)`
* `get_money(text)`
* `get_percentages(text)` 
* `get_credit_cards(text)` (currently in progress)
* `get_addresses(text)`