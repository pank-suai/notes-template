#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#show: ilm.with(
  title: [Название],
  author: 
    "Панков Василий <pank-su>",
  date: datetime.today(),
  abstract: [Кто введёт? Насколько краткий конспект? на чём основан?],
  table-of-contents: outline(depth: 2),
  preface: [  ],
  external-link-circle: false
)

#include "src/000_введение.typ"


/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

