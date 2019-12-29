#lang info

;# Colors

(define basic-foreground     #(248 248 242))
(define basic-background     #( 90  84 117))
(define constant             #(255 133 127))
(define string               #(255 234   0))
(define keyword              #(255 184 209))
(define parenthesis          #(197 163 255))
(define comment              #(230 192   0))
(define error                #(249  38 114))
(define warning              #(174 129 255))
(define highlighted          #(248 248 240))
(define imported             #(194 255 223))
(define paren-match-color    #(113 103 153))
(define matching-identifiers #(128 119 168))
(define arrow                #(255 243  82))

;# Colors Table

(define colors `(; Colors
                 (drracket:syncheck:document-identifier  ,basic-background)
                 (drracket:syncheck:matching-identifiers ,matching-identifiers)
                 (drracket:syncheck:tail-arrow           ,arrow)
                 (drracket:syncheck:template-arrow       ,arrow)
                 (drracket:syncheck:untacked             ,arrow)
                 (drracket:syncheck:unused-identifier    ,warning)
                 (drracket:syncheck:var-arrow            ,arrow)
                 (framework:basic-canvas-background      ,basic-background)
                 (framework:default-text-color           ,basic-foreground)
                 (framework:misspelled-text-color        ,error)
                 (framework:paren-match-color            ,paren-match-color)

                 ; Styles
                 (drracket:check-syntax:both-obligation-style-pref  ,comment)
                 (drracket:check-syntax:free-variable               ,highlighted
                                                                    #s(background ,warning))
                 (drracket:check-syntax:imported                    ,imported)
                 (drracket:check-syntax:lexically-bound             ,basic-foreground)
                 (drracket:check-syntax:my-obligation-style-pref    ,basic-foreground)
                 (drracket:check-syntax:set!d                       ,error)
                 (drracket:check-syntax:their-obligation-style-pref ,imported)
                 (drracket:check-syntax:unk-obligation-style-pref   ,basic-foreground)
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
                 (framework:syntax-color:scheme:other               ,basic-foreground)
                 (framework:syntax-color:scheme:parenthesis         ,parenthesis)
                 (framework:syntax-color:scheme:string              ,string)
                 (framework:syntax-color:scheme:symbol              ,basic-foreground)
                 (framework:syntax-color:scheme:text                ,basic-foreground)
                 (plt:htdp:test-coverage-off                        ,highlighted
                                                                    #s(background ,error))
                 (plt:htdp:test-coverage-on                         ,basic-foreground)
                 (plt:module-language:test-coverage-off             ,highlighted
                                                                    #s(background ,error))
                 (plt:module-language:test-coverage-on              ,basic-foreground)))

;# Configuration

(define deps '("base"))
(define framework:color-schemes `(#hash((name . "fairyfloss")
                                        (white-on-black-base? . #t)
                                        (colors . ,colors))))