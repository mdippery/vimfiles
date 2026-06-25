command JournalEntry put! =strftime('\entry{%A}{%-d}{%B}{%Y}')
command JournalDay $put =strftime('\input{%Y/%m/%d}')

cnoreabbrev je JournalEntry
cnoreabbrev jd JournalDay
