## Template_WordDocInR
How to set up a project for writing and rendering a Word output


## Notes about a few cool things 

### **Better BibTex**


### **assets/my-styles.docx**


### 



## Notes to (Rinco)Self 

1) Citation Syntax
`Blah blah [see @doe99, pp. 33-35; also @smith04, ch. 1].`
A minus sign (-) before the @ will suppress mention of the author in the citation. 
`Smith says blah [-@smith04].`

Unused References in YAML (nocite)
If you want to include items in the bibliography without actually citing them in the body text, y 


`---`
`nocite: | `
`  @item1, @item2`
`---`

`@item3`