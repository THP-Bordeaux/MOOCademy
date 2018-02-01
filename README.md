# README

faire la cmd "rails db:migrate" avant d'ouvrir la console
## MOOCademy
- deux modèle créer : "Cour", "Lecon"
* "Cour" a pour attribut "title"(string) et "description"(text)
  "title" et "description" sont a renseigner obligatoirement
* "Lecon" a pour attribut "title"(string) et "body"(text)
  "title" et "body" sont a renseigner obligatoirement


* faut obligatoirement créer "lecon" lui attribuer un "cour" avant de sauvegarder

## The Hacking pinterest

* User : has_many Pin, Comment

* Pin : has_many Comment
        belongs_to User

* Comment : belongs_to Pin
            belongs_to User
