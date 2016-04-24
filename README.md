# Game of Thrones Quotes API
Because season 6 is coming out, and I can't find anything like it out there.

## Production host
[https://got-quotes.herokuapp.com/quotes](https://got-quotes.herokuapp.com/quotes)


## APIs

### GET /quotes
**Returns an array with one quote and a character:**
```
{
    "quote":"It's not easy being drink all the time. If it were easy, everyone would do it.",
    "character":"Tyrion"
}
```

### Filter by Character

Accepts any combination of characters. If result is invalid, it redirects to the API root.

**Sample:**
```
https://got-quotes.herokuapp.com/quotes?char=teryion
```
**Current Characters:**

| Character Name                           | Suggested Search Parameter   |
| :---                                     | :---                         |
| Bronn                                    | bronn                        |
| Brynden Tully                            | brynden                      |
| Cersei                                   | cersei                       |
| The Hound                                | hound                        |
| Jaime Lannister                          | jaime                        |
| Littlefinger                             | littlefinger                 |
| Olenna Tyrell                            | olenna                       |
| Renly Baratheon                          | renly                        |
| Tyrion                                   | tyrion                       |
| Varys                                    | varys                        |