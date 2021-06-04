class Buku {
  String judul, isi, author, imageAsset;
  int rating, tahun;

  Buku(
      {this.judul,
      this.isi,
      this.author,
      this.tahun,
      this.rating,
      this.imageAsset});
}

var bukuList = [
  Buku(
      judul: "The Things You Can See Only When You Slow Down",
      isi:
          "The world moves fast, but that doesn't mean we have to. In this timely guide to mindfulness, Haemin Sunim, a Buddhist monk born in Korea and educated in the United States, offers advice on everything from handling setbacks to dealing with relationships and loved ones, in a beautiful book combining his teachings with calming full-colour illustrations. Even as we speed toward what comes next, Haemin Sunim's messages of encouragement speak directly to the anxieties that have become part of modern life and remind us of the strength and joy that come from slowing down.",
      author: "Haemin Sunim",
      tahun: 2017,
      rating: 5,
      imageAsset:
          'source/images/buku/The Things You Can See Only When You Slow Down.jpg'),
  Buku(
      judul: "A Very Stable Genius",
      isi:
          "'It's all here in this stunning first draft of the history of the presidency of Donald Trump' Sydney Morning Herald 'An icy, Iago-like glimpse of the emotional and moral nullity that may be the source of Trump's power' Observer 'A damning, well-reported, well-sourced and clearly written haymaker' Sunday Times Drawing on nearly three years of reporting, hundreds of hours of interviews and more than two hundred sources, including some of the most senior members of the administration, friends and first-hand witnesses who have never spoken before, Philip Rucker and Carol Leonnig take us inside some of the most controversial moments of Trump's presidency. ",
      author: "Carol D. Leonnig, Philip Rucker",
      tahun: 2021,
      rating: 4,
      imageAsset: 'source/images/buku/A Very Stable Genius.png'),
  Buku(
      judul: "The Subtle Art of Not Giving a F*ck",
      isi:
          'Manson makes the argument, backed both by academic research and well-timed poop jokes, that improving our lives hinges not on our ability to turn lemons into lemonade, but on learning to stomach lemons better. Human beings are flawed and limited—"not everybody can be extraordinary, there are winners and losers in society, and some of it is not fair or your fault." Manson advises us to get to know our limitations and accept them. Once we embrace our fears, faults, and uncertainties, once we stop running and avoiding and start confronting painful truths, we can begin to find the courage, perseverance, honesty, responsibility, curiosity, and forgiveness we seek.',
      author: "Mark Manson",
      tahun: 2016,
      rating: 3,
      imageAsset: 'source/images/buku/A Subtle Art.jpg'),
  Buku(
      judul: "Becoming",
      isi:
          'In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era. As First Lady of the United States of America—the first African American to serve in that role—she helped create the most welcoming and inclusive White House in history, while also establishing herself as a powerful advocate for women and girls in the U.S. and around the world, dramatically changing the ways that families pursue healthier and more active lives, and standing with her husband as he led America through some of its most harrowing moments. Along the way, she showed us a few dance moves, crushed Carpool Karaoke, and raised two down-to-earth daughters under an unforgiving media glare.',
      author: "Michelle Obama",
      tahun: 2018,
      rating: 4,
      imageAsset: 'source/images/buku/Becoming.jpg'),
  Buku(
      judul: "Missionaries",
      isi:
          'Expansive, explosive and epic Marlon James A courageous book New York Times Book Review A BARACK OBAMA BOOK OF THE YEAR Neither Mason, a US Special Forces medic, nor Lisette, a foreign correspondent, has emerged from America’s long wars in Iraq and Afghanistan unscathed. Yet, for them, war still exerts a terrible draw – the noble calling, the camaraderie, the life-and-death stakes. Where else in the world can such a person go? All roads lead to Colombia, where the US has partnered with the local government to stamp out a vicious civil war and keep the predatory narco gangs at bay. Mason is ready for the good war, and Lisette is more than ready to cover it. A novel of extraordinary suspense, Missionaries is an astonishment whose unsparing drama is infused with a rare wisdom about the human heart.',
      author: "Phil Klay",
      tahun: 2020,
      rating: 2,
      imageAsset: 'source/images/buku/Missionaries.jpg'),
  Buku(
      judul: "The Power of Habit",
      isi:
          'In The Power of Habit, award-winning business reporter Charles Duhigg takes us to the thrilling edge of scientific discoveries that explain why habits exist and how they can be changed. Distilling vast amounts of information into engrossing narratives that take us from the boardrooms of Procter & Gamble to sidelines of the NFL to the front lines of the civil rights movement, Duhigg presents a whole new understanding of human nature and its potential. At its core, The Power of Habit contains an exhilarating argument: The key to exercising regularly, losing weight, being more productive, and achieving success is understanding how habits work. As Duhigg shows, by harnessing this new science, we can transform our businesses, our communities, and our lives.',
      author: "Charles Duhigg",
      tahun: 2012,
      rating: 5,
      imageAsset: 'source/images/buku/The Power Of Habit.jpg'),
  Buku(
      judul: "Securing the Perimeter",
      isi:
          'The most common culprit of the largest hacks has been bad personal identification. In terms of bang for your buck, effective access control is the best investment you can make. Financially, it’s more valuable to prevent than to detect a security breach. That’s why Identity and Access Management (IAM) is a critical component of an organization’s security infrastructure. In the past, IAM software has been available only from large enterprise software vendors. Commercial IAM offerings are bundled as “suites” because IAM is not just one component. It’s a number of components working together, including web, authentication, authorization, cryptographic, and persistence services.',
      author: "Michael Schwartz, Maciej Machulak",
      tahun: 2018,
      rating: 1,
      imageAsset: 'source/images/buku/Securing the Perimeter.jpg'),
  Buku(
      judul: "The Model Thinker",
      isi:
          'From the stock market to genomics laboratories, census figures to marketing email blasts, we are awash with data. But as anyone who has ever opened up a spreadsheet packed with seemingly infinite lines of data knows, numbers arent enough: we need to know how to make those numbers talk. In The Model Thinker, social scientist Scott E. Page shows us the mathematical, statistical, and computational models—from linear regression to random walks and far beyond—that can turn anyone into a genius. At the core of the book is Pages "many-model paradigm," which shows the reader how to apply multiple models to organize the data, leading to wiser choices, more accurate predictions, and more robust designs. The Model Thinker provides a toolkit for business people, students, scientists, pollsters, and bloggers to make them better, clearer thinkers, able to leverage data and information to their advantage.',
      author: "Scott E. Page",
      tahun: 2018,
      rating: 1,
      imageAsset: 'source/images/buku/The Model Thinker.jpg'),
];
