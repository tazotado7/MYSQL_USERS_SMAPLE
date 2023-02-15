<p style="text-align:center"><span style="font-family:Calibri"><span style="font-size:20,0000pt"><span style="font-family:Calibri">შესავალი</span></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:justify"><span style="font-family:Calibri"><span style="font-size:20,0000pt"><span style="font-family:Calibri">სარჩევი:</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ცხრილები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_PROPERTIES - </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">პარამეტრების ცხრილი.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_CLIENTS - კლიენტის პერსონალური მონაცემები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_TOKENS - კლიენტის კოდები. ვერიფიკაციის, რესეტის, ტოკენი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_USER - კლიენტის ლოგინი,პაროლი,სტატუსი,მცდელობების რაოდ.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_USER_AUTH - კლიენტის ვერიფიკაციის ისტორია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_USER_AUTH_TYPE - კლიენტის ვერიფიკაციის ტიპები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_USER_STATUS - კლიენტის სტატუსები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ფუნქციები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">F_CODE_GENERATOR</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;- </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">უნიკალური კოდის გენერირება სიგრძის მიხედვით</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">F_USER_AUTH - მომხმარებლის ვერიფიკაცია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">F_USER_CREATE - მომხმარებლის შექმნა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>პროცედურები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">PR_USER_EXISTS - ამოწმებს მომხმარებელი თუ არსებობს</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">PR_PROPERTIES_CHECK</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;- </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">ამოწმებს პარამეტრების ცხრილს თუ არ არსებობს ქმნის, და </span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri">ამოწმებს &bdquo;</span></span><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><em>PR_PROPERTIES_CHECK_NAME</em></span></span></em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><span style="font-family:Calibri">&bdquo;-პროცედურით.</span></span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">PR_PROPERTIES_CHECK_NAME - ამოწმებს პარამეტრების ცხრილში თუ არსებობს პარამეტრი </span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri">და თუ არ არის აინსერტებს.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">PR_RESET_USERS</span></span>&nbsp;<span style="font-size:10,0000pt"><span style="font-family:Calibri">- არასანქცირებული მომხმარებლების ყოველდღიური რესეტისათვის, გადის </span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri"><span style="font-family:Calibri">&bdquo;PR_PROPERTIES_CHECK&bdquo;-პროცედურას, ასევე თუ მონაცემები არ არის ციფრი მაშინ </span></span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri">წაშლის და თავიდან გაივლის &bdquo;PR_PROPERTIES_CHECK&bdquo;-პროცედურას.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ევენტები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">E_RESET_USERS</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;- არასანქცირებული მომხმარებლების მცდელობების რესეტი დეფაულტ მნიშვნელზე იძახებს &bdquo;PR_RESET_USERS&bdquo; პროცედურას</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:center"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ცხრილები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_PROPERTIES</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">პარამეტრების ცხრილი</span></span></span></p>

<p style="text-align:left"><span style="background-color:#1e1e1e"><span style="font-family:Calibri"><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;USER_ATTEMPTS1&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">, </span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">3</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">, </span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">NULL</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">, </span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">ვერიფიკაციის მაქსიმალური რაოდენობა</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span></span></span></p>

<p style="text-align:left"><span style="background-color:#1e1e1e"><span style="font-family:Calibri"><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;USER_ATTEMPTS2&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">3</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">NULL</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">რესეტის</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">/</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">მეილის დამოწმების მაქსიმალური რაოდენობა</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span></span></span></p>

<p style="text-align:left"><span style="background-color:#1e1e1e"><span style="font-family:Calibri"><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;USER_E_CODE_LENGTH&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">7</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">NULL</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">,</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">მომხმარებლის რეგისტრაციისას გაგზავნილი დამოწმების კოდის სიგრძე</span></span></span></span><span style="font-size:8,0000pt"><span style="background-color:#1e1e1e"><span style="font-family:Consolas"><span style="color:#ffffff">&#39;</span></span></span></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_CLIENTS </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">კლიენტის პერსონალური მონაცემები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">აქ უნდა ჩაიწეროს ისეთი ინფორმაციები რაც კლიენტის შესახებ გვექნება </span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ADDRESS - მისამართი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">CREATE_DATE - შექმნის თარიღი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">EMAIL - ე-მაილი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">FIRST_NAME -სახელი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">LAST_LOGIN - ბოლო ვერიფიკაცია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">LAST_NAME - გვარი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">USER_ID - მომხმარებლის იდ</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_TOKENS </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">კლიენტის კოდები. ვერიფიკაციის, რესეტის, ტოკენი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">მომხმარებლის პირველი რეგისტრაციის მეილის დამოწმების კოდიდან დაწყებული, პაროლის რესეტის, ან ორმაგი დაცვის ვერიფიკაციისთვის კოდების გამოსაყენებლად</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">RESET - აღდგენის კოდი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">TOKEN - ტოკენი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">USER_ID - მომხმარებლის იდ</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">VERIFY - ვერიფიკაციის კოდი</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_USER </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">კლიენტის ლოგინი,პაროლი,სტატუსი,მცდელობების რაოდ.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ეს არის ის ცხრილი რომელზეც იქნება ყველაზე მეტი დატვირთვა ვერიფიკაციის ან კლიენტის არსებობის სანახავად</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ATTEMPTS1 - ავტორიზაციის მცდელობების რაოდენობა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ATTEMPTS2 - ვერიფიკაციის/აღდგენის მცდელობების რაოდენობა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">PASSWORD - პაროლი დაშიფრული</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">STATUS - სტატუსი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">USERNAME - ლოგინი</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_USER_AUTH </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;კლიენტის ვერიფიკაციის ისტორია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ეს იქნება ვერიფიკაციების ისტორია, ანუ როდის რომელი ტოკენით სცადა ვერიფიკაცია და რა სტატუსი დაუბრუნა, ვერ შეძლო დაებლოკა თუ წარმატებით შევიდა</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">AUTH_TYPE -ვერიფიკაციის ტიპი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">DATE - თარიღი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">TOKEN - მოწყობილობის ტოკენი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">USER_ID მომხმარებლის იდ</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_USER_AUTH_TYPE </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">კლიენტის ვერიფიკაციის ტიპები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ეს ცხრილი იქნება ვერიფიკაციის სტატუსის განმსაზღვრელი, 1-ვერ გაიარა ვერიფიკაცია,2-დაებლოკა იუზერი 3- და ა.შ.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">DESC - აღწერა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">NAME - დასახელება</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>KRN_USER_STATUS</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;კლიენტის სტატუსები</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ეს არის მომხმარებლის მიმდინარე სტატუსი გამოვყოფ 4 ძირითად კომპონენტს</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong><em>რეგისტრირებული </em></strong></span></span></em></strong><span style="font-size:10,0000pt"><span style="font-family:Calibri">- მომხმარებელს გავლილი აქვს რეგისტრაცია, მაგრამ ჯერ არ დაუმოწმებია მეილი და არ შეუვსია მომხმარებლის ძირითადი ინფორმაცია,(სახელი,პაროლი,მისამართო და ა.შ)</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong><em>ავტორიზებული </em></strong></span></span></em></strong><span style="font-size:10,0000pt"><span style="font-family:Calibri">- მომხმარებელი აქტიურია, დასრულებული აქვს რეგისტრაციის ყველა ფაზა.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong><em>დაბლოკილი </em></strong></span></span></em></strong><span style="font-size:10,0000pt"><span style="font-family:Calibri">- მომხმარებელმა დასაშვებზე მეტჯერ შეიყვანა არასწორი პაროლი</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong><em>სანქცირებული </em></strong></span></span></em></strong><span style="font-size:10,0000pt"><span style="font-family:Calibri">- მომხმარებელი ადმინისტრაციის მიერ დაიბლოკა, ვერ შეძლებს პაროლის აღდგენას ან ვერიფიკაციის გალას, მიმართოს ადმინისტრაციას.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">DESC - აღწერა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ID - უნიკალური</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">NAME - დასახელება</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:center"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ფუნქციები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>F_CODE_GENERATOR</strong></span></span></strong>&nbsp;</span></p>

<p style="text-align:left"><span style="font-family:Calibri">&nbsp;<span style="font-size:10,0000pt"><span style="font-family:Calibri">უნიკალური კოდის გენერირება სიგრძის მიხედვით</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ფუნქცია აბრუნებს სიგრძის მითითებით: დაშიფრულ, მიმდინარე თაიმსტემპს დამატებული რანდომ რიცხვი, მოჭრილი მითითებული სიგრძეზე.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>F_USER_AUTH</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;მომხმარებლის ვერიფიკაცია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">აბრუნებს:</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-1 მომხმარებელი ვერ მოიძებნა,</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-2 მომხმარებელი დაბლოკილია ან სანქცირებულია</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-3 პაროლი არ ემთხვევა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&gt;0 </span></span><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><em>მომხმარებლის იდ</em></span></span></em><span style="font-size:10,0000pt"><span style="font-family:Calibri">. მომხმარებელმა გაიარა ვერიფიკაცია.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-2; -3; &gt;0 სამივე შემთხვევაში ინფორმაცია ჩაიწერება ვერიფიკაციების ცხრილში ().</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-3 შემთხვევაში ვერიფიკაციის მცდელობების რაოდენობა ერთით შემცირდება, თუ გახდება 0-ის ტოლი მომხმარებლის სტატუსი შეიცვლება და გახდება დაბლოკილი.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&gt;0 თუ გაივლის ვერიფიკაციას მომხმარებლის მცდელობების რაოდენობა გახდება მაქსიმუმის ტოლი.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>F_USER_CREATE</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;მომხმარებლის შექმნა</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">აბრუნებს:</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">-1 მომხმარებელი უკვე არსებობს</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&gt;0 მომხმარებლის უნიკალური იდ</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">აღწერა:</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">ფუნქციის გაშვებამდე გაუშვით პროცედურა &bdquo;PR_PROPERTIES_CHECK&bdquo;</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">მომხმარებელი თუ არ არსებობს, &bdquo;KRN_USER&bdquo; ცხრილში ქმნის ახალ ჩანაწერს და მოაქვს ახალი იუზერის იდ, შემდეგ შექმნის ჩანაწერს კლიენტების და იუზერ ტოკენის ცხრილებში(KRN_TOKENS,</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_CLIENTS </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">),</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:center"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>პროცედურები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>PR_USER_EXISTS </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;ამოწმებს მომხმარებელი თუ არსებობს</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>PR_PROPERTIES_CHECK</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri">&nbsp;<span style="font-size:10,0000pt"><span style="font-family:Calibri">ამოწმებს პარამეტრების ცხრილს თუ არ არსებობს ქმნის, და </span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri">ამოწმებს &bdquo;</span></span><em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><em>PR_PROPERTIES_CHECK_NAME</em></span></span></em><span style="font-size:10,0000pt"><span style="font-family:Calibri"><span style="font-family:Calibri">&bdquo;-პროცედურით.</span></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>PR_PROPERTIES_CHECK_NAME </strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;ამოწმებს პარამეტრების ცხრილში თუ არსებობს პარამეტრი </span></span> <span style="font-size:10,0000pt"><span style="font-family:Calibri">და თუ არ არის ან </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">value </span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">სვეტი ნალი დახვდა აგზავნის წაშლის ბრძანებას და ამატებს თავიდან მითითებულ პარამეტრებით.</span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:left"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>PR_RESET_USERS</strong></span></span></strong><strong>&nbsp;</strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;არასანქცირებული მომხმარებლების ყოველდღიური რესეტისათვის, გადის &bdquo;PR_PROPERTIES_CHECK&bdquo;-პროცედურას, ასევე თუ მონაცემები არ არის ციფრი მაშინ წაშლის და თავიდან გაივლის &bdquo;PR_PROPERTIES_CHECK&bdquo;-პროცედურას.</span></span></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">მცდელობების პარამეტრები მაქვს &bdquo;</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">KRN_PROPERTIES</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri"><span style="font-family:Calibri">&bdquo; ცხრილიდა.</span></span></span></span></p>

<p style="text-align:left">&nbsp;</p>

<p style="text-align:center"><span style="font-family:Calibri"><strong><span style="font-size:10,0000pt"><span style="font-family:Calibri"><strong>ევენტები</strong></span></span></strong></span></p>

<p style="text-align:left"><span style="font-family:Calibri"><span style="font-size:10,0000pt"><span style="font-family:Calibri">E_RESET_USERS</span></span><span style="font-size:10,0000pt"><span style="font-family:Calibri">&nbsp;- არასანქცირებული მომხმარებლების მცდელობების რესეტი დეფაულტ მნიშვნელზე იძახებს &bdquo;PR_RESET_USERS&bdquo; პროცედურას</span></span></span></p>

<p style="text-align:left">&nbsp;</p>
