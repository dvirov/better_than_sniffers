$data modify storage $(UUID0)$(UUID1)$(UUID2)$(UUID3) active set value 1b

#$execute unless data storage bts:main players[{UUID:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)]}] run data modify storage $(UUID0)$(UUID1)$(UUID2)$(UUID3) active set value 1b
#bts:main players append value {UUID:[I;$(UUID0)$(UUID1)$(UUID2)$(UUID3)]}
$say my UUID:$(UUID0)$(UUID1)$(UUID2)$(UUID3)