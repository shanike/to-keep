### join 3 param to 1 single obj param:

The function expects 2 params. I suggest joining the 3 params into a single 1 obj param, so the order of the params is not critical

(To prevent mistakenly passing newPassword as first param and oldPassword as second param :fearful: מנסיון)

(and create a {oldPassword: any, newPassword: any, _id: string} interface)


### literal consts UPPER_CASE or PascalCase:

literal consts (=אובייקטים שיש להם ערך מפורש שלא מחושב בכלל ונשאר קבוע בפרויקט) should be UPPER_CASE or PascalCase

(אני מעדיפה PascalCase כי הוא יותר קריא לדעתי מאשר UPPER_CASE אבל כן מקובל להשתמש בUPPER_CASE. בכל מקרה הכי חשוב: תבחרו קונבנציה ותקפידו עליה)


### literal values to constants good practice:

It's a good practice, when using literal values (like numbers, strings,...), to extract them to a constant (which gives them a name, like "PI_THREE_DIGITS" in `const PI_THREE_DIGITS = 4.13` rather than using `4.13` in the middle of the code which has no name). And for being more organized, it's good to extract the constants to a dedicated file (like `???.constants.ts`)


### no export default please 🫠:

no export default please 🫠

1-מונע שמות זהים בקובץ עצמו ובמי שמשתמש בו
2-ולכן יותר מסודר
3-אני לא רואה צורך ב־export default


onClick vs handleClick:

(אם מעניין אותך, למשל בpackageים גדולים ורשמיים, או בhtml - לפונקציה של event קוראים בד"כ עם prefix של "n" (למשל onClose) בשביל שעבור מי שישתמש בקומפוננטה זה מאוד הגיוני: מי שקורא לזה מעביר למשל בתוך השדה `onClose` פונקציה שנקראת `handleClose`. 
(כאן, בגלל שאנחנו זה גם מי שישתמש בזה וגם מי שבונה את הקומפוננטה "הגנרית" - זה מבלבל, אבל תראה האם אתה מבין למה onClose זה הגיוני ותחליט)

### order imports
order imports


### props of components: scope level of abstraction of components EXAMPLE:

למשל אם יש לי באפליקציה אזור שמציג את השעה ואזור אחר עם כפתור שהופך מ24 format לam/pm - אז אם מסתכלים **רק על הקומפוננטה של הכפתור**: מבחינת הכפתור הגיוני שהוא יקבל prop של `onClick` (או `onChange` או `onFormatChange`, לא קריטי כרגע.) **ומי שישתמש בקומפוננטה** הזו, יבצע וינהל דברים שקשורים לשעון עצמו. זו אפשרות אחת. אפשרות אחרת היא שהקומפוננטה של הכפתור של am/pm or 24 תקבל פונקציה `updateClock` **והיא** תקרא לפונקציה בעת שינוי, ולדעתי זה כבר קצת יוצא מאזור "הנוחות" של הקומפוננטה, מתפקידה. אז עדיף את ה"הפרד ומשול" הזה כך שכל קומפוננטה עושה משימה ספציפית


### setState inside useEffect:

setState inside useEffect, not so good

https://hilmahq.slack.com/archives/C04CS6ZR345/p1677666833201599 (https://beta.reactjs.org/learn/you-might-not-need-an-effect)

### Ternary conditions, `&&`, and literal `if`:

Make sure the condition is a boolean. Because it might be problematic to use `&&` and `||` for functionality conditions and not pure logical conditions:
for example:
`condition ? "yes" : "no"`  
`condition && "yes"`
if the condition is `0` for example, then the first line will return "no" but the second will return `0`(!)

Notice that it's always better to convert a functionality condition from using `?` `:` `||` `&&` to using a literal `if` condition


### TS explicit return type in generic functions (reasons)

I suggest adding an explicit return type on functions, especially generic functions.
The reason, in my opinion, is 1) while writing a genric function, i'm aware to the type being returned which is important. 2) TS makes sure that changes to the function keep the return type 3) helps document the generic function for people to easily see the return type


### Why are there changes in file:

למה יש שינויים בקובץ הזה?
זה קשור לבראנצ?
