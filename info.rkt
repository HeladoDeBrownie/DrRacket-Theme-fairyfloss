#lang info

(define background        #( 90  84 117))
(define foreground        #(248 248 242))
(define paren-match-color #(113 103 153))
(define comment           #(230 192   0))
(define string            #(255 234   0))
(define constant          #(197 163 255))
(define local-name        #(197 163 255))
(define keyword           #(255 184 209))
(define imported          #(194 255 223))
(define error             #(249  38 114))
(define warning           #(174 129 255))
(define highlighted       #(248 248 240))

(define unused-color-a #(168 117 123))
(define unused-color-b #(128 119 168))
(define unused-color-c #(255 243  82))
(define unused-color-d #(255 133 127))

(define colors `(; Colors
                 (drracket:syncheck:document-identifier    ,background)
                 (drracket:syncheck:matching-identifiers   ,background)
                 (drracket:syncheck:tail-arrow             ,comment)
                 (drracket:syncheck:template-arrow         ,comment)
                 (drracket:syncheck:untacked               ,comment)
                 (drracket:syncheck:unused-identifier      ,comment)
                 (drracket:syncheck:var-arrow              ,comment)
                 (framework:basic-canvas-background        ,background)
                 (framework:default-text-color             ,foreground)
                 (framework:misspelled-text-color          ,error)
                 (framework:paren-match-color              ,paren-match-color)

                 ; Styles
                 (drracket:check-syntax:both-obligation-style-pref  ,comment)
                 (drracket:check-syntax:free-variable               ,highlighted
                                                                    #s(background ,warning))
                 (drracket:check-syntax:imported                    ,imported)
                 (drracket:check-syntax:lexically-bound             ,local-name)
                 (drracket:check-syntax:my-obligation-style-pref    ,local-name)
                 (drracket:check-syntax:set!d                       ,error)
                 (drracket:check-syntax:their-obligation-style-pref ,imported)
                 (drracket:check-syntax:unk-obligation-style-pref   ,foreground)
                 (drracket:check-syntax:unused-require              ,highlighted
                                                                    #s(background ,warning))
                 (drracket:read-eval-print-loop:error-color         ,highlighted
                                                                    #s(background ,error))
                 (drracket:read-eval-print-loop:out-color           ,string)
                 (drracket:read-eval-print-loop:value-color         ,constant)
                 (framework:syntax-color:scheme:comment             ,comment)
                 (framework:syntax-color:scheme:constant            ,constant)
                 (framework:syntax-color:scheme:error               ,highlighted
                                                                    #s(background ,error))
                 (framework:syntax-color:scheme:hash-colon-keyword  ,keyword)
                 (framework:syntax-color:scheme:keyword             ,keyword)
                 (framework:syntax-color:scheme:other               ,foreground)
                 (framework:syntax-color:scheme:parenthesis         ,foreground)
                 (framework:syntax-color:scheme:string              ,string)
                 (framework:syntax-color:scheme:symbol              ,local-name)
                 (framework:syntax-color:scheme:text                ,foreground)
                 (plt:htdp:test-coverage-off                        ,highlighted
                                                                    #s(background ,error))
                 (plt:htdp:test-coverage-on                         ,foreground)
                 (plt:module-language:test-coverage-off             ,highlighted
                                                                    #s(background ,error))
                 (plt:module-language:test-coverage-on              ,foreground)))

(define deps '("base"))
(define framework:color-schemes `(#hash((name . "Fairy Floss")
                                        (white-on-black-base? . #t)
                                        (colors . ,colors))))
