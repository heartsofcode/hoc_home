# Specs for new HOC Website
normale Seite mit Infos zum Hackspace &
einen Log-In-Bereich für Mitmuschis

## Website
- #### Landing page
  - Integration letzte 3 Tweets
  - Teaser letzter Blogpost
  - kommende events
- #### About
- #### Mitmischen
    - ##### Mitmuschiantragsformular
- #### Kalender
  - Integration der öffentlichen events aus dem Log-In Bereich
- #### Blog
  - Veröffentlichung von blog posts aus dem login bereich
- #### Pressespiegel
- #### Contact
- #### Impressum

## Log-In
### Member-Area
- #### Communication
  Kommunikationsmöglichkeiten (zb. Chat, Forum, Gruppenseiten, Wiki) geben
- #### Calendar
  Member haben Möglichkeit Events zu erstellen, die dann im Kalender erscheinen
(entweder öffentlich, oder nur für andere Mitglieder sichtbar). Eine
Erinnerungsfunktion erinnert an Events. Externe können Events für den
Kalender Vorschlagen, die dann von einem Member gesichtet und
freigeschaltet werden können.
- #### Gruppen
  Weiterhin soll es die Möglichkeit geben
sich in Gruppen zusammenzuschließen (zB. DataViz Lerngruppe, OpenSource
Stammtisch, WomenWhoGo etc.) - die ebenfalls (Gruppen-)Events erstellen
und gruppenintern kommunizieren können (also in etwa so wie Gruppen bei
Facebook).
- #### Tasks
    Was gibts zu tun und wer macht das?
- #### Cloud
  Cloud für Dokumente (Protokolle, Funding Anschreiben, Logo Designs,
Abrechnungstabellen etc. - das liegt zu unserer Schande momentan alles
noch bei Google).
- #### Dashboard, mitmuschi kann:
  - gemerkte events
  - event erstellen
  - übersicht über communication
  - nth: blog eintrag verfassen
  - nth: links zum pressespiegel hinzufügen

### Member-Admin
- #### role:
    full_member, support_member, reader
- #### Memebership Fees
  Gut wäre auch eine Funktion die automatisch an das Zahlen von
Mitgliedsbeiträgen erinnert, und deren Zahlung dann auch überprüft (evt.
schwierig wgn. Zugriff auf Kontodaten, JSON?).

## Tech
- Rails app: Rails v5.1, Ruby 3.1
- Server: Greenhost

### Gems
- Internationalization: i18e
- Log-In: Devise
