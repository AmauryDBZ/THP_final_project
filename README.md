<h1 align="center">
  <strong align="center">GoOpenSource</strong>
  <a href="https://go-open-source.herokuapp.com/"

  <img
    src="https://pictures.kitties.netlib.re/storage/logo_white_min.svg"          
    width="60px"
    height="60px"
    alt="Go Open Source">
  </a>
</h1>

## The first crowdfunding plateform dedicated to open sources and free softwares

Go check it: __[GoOpenSource](https://go-open-source.herokuapp.com/)__\
[Presentation video (in french)](https://www.youtube.com/watch?v=F0IGXNUja6o)  

<details>
<summary>Example</summary>

moussaillon @ yopmail.com || Azerty
</details>


#### Installation instructions
This application uses Ruby 2.5.1 and Rails 5.2.4
1. Install dependencies: `sudo apt install imagemagick postgresql-12`
2. Install gems: `bundle install`
3. Create pg database: `rails db:create`
4. Migrate: `rails db:migrate`
5. Run the seed to fill database: `rails db:seed`

## 1. Presentation
We propore to teams of developers to publish their project on our plateform so they can both earn money and highlight all the work that developing a free or open sources software. The website is currently developed in french.  

In the same time, a user or a visitor can finance with tips softwares that they like.  

It is to the project holder to make an assessement concerning the time and money that cost the development of their project.

## 2. User stories
A simple visitor does not need to sign up to donate to any project. When a donation is done, visitors/users get an email. But it is necessary to sign up to propose a project.  

After signup, users get an email and can update its personal informations (first/last name, email, birth date, description, professional background). Users can of course do everything a visitor can do.

Once a project is proposed, it must be first reviewed by an admin who can either accept or deny it. In any case the user gets an email. A project can be edited and deleted by both its holder or by an admin. If edited, a project is once again sent to review.

## 3. Technical aspects :
### 3.1 Database :
We use six tables (excluding active storage tables):
* __users__: stores informations concerning users
* __bank_details__: stores informations concerning users bank details
* __projects__: stores informations concerning projects
* __donations__: stores informations concerning donations from users to projects
* __categories__: stores informations concerning categories. Categories are used to sort projects depending on their theme
* __project_categories__: links projects to their potential multiple categories
* __friendly_id_slugs__: links items id from various tables to a slug (human readable text id).

### 3.2 Frontend :
We use Bootstrap theme [landkit](https://themes.getbootstrap.com/product/landkit/). Pictures are hosted on our server using a Raspberry Pi.

### 3.3 Backend :
API: we based our payment system on Stripe

## 4. The MVP :
A fully operational DB, a complete user stories as described above, an admin dashboard.

## 5. Final version :
Who knows what surprises will we bring to you?

## 6. Mentor
Maybe the best one? [Bento](https://github.com/davidBentoPereira) from Lyon.
