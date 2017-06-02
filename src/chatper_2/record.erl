-module(record).
-export([start/3,start/2,start/1,start/0]).
-record(customer,{name="<anonymous>" , address, phone}).

start(Name,Address,Phone)->printcustomer(#customer{name = Name,address = Address , phone = Phone}).
start(Name,Address)->printcustomer(#customer{name = Name,address = Address}).
start(Name)->printcustomer(#customer{name = Name}).
start()->printcustomer(#customer{}).


printcustomer(R)->
    io:format(""),
    io:format("name: ~s. address: ~s. phone: ~s. ~n",[R#customer.name,R#customer.address,R#customer.phone]).



