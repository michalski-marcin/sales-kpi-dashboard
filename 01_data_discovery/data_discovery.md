# Data Discovery — Sales KPI Dashboard

## 1. Objective

<!-- po co ta eksploracja, jakie pytanie ma wspierać -->

de
</br>

## 2. Key Tables and Their Role

| Table           | Role | Key Columns |
| --------------- | ---- | ----------- |
| orders          |      |             |
| customers       |      |             |
| monthly_revenue |      |             |
| product_summary |      |             |

</br>

## 3. Relationships

<!-- jak tabele się łączą, które są główne (robocze),
     a które tylko do walidacji -->
</br>

## 4. Observations and Open Questions

<!-- Format danych:
Kolumny z datami (order_date, registration_date, delivery_date) są w CSV jako tekst DD.MM.YYYY — zaimportowane jako VARCHAR, konwersja na DATE dopiero w kroku czyszczenia
Brak danych o koszcie produktu (COGS) w datasecie — dlatego Contribution Margin zamieniony na Discount Impact -->

<!-- Kolumny w customers — trzy kategorie:
Surowe atrybuty klienta (registration_date, country, age itd.) — używane wprost
Kolumny zagregowane, prawdopodobnie liczone z orders (total_orders, total_spend_usd, avg_order_value_usd, days_since_last_purchase, reviews_given, avg_review_score, returns_made) — traktowane jak monthly_revenue/product_summary, czyli tylko do walidacji, nie jako źródło
Kolumny w ogóle nieużywane w żadnym z 5 KPI (wishlist_items, newsletter_subscribed) — pominięte -->

<!-- Quality checks — orders:
Brak duplikatów order_id (GROUP BY + HAVING COUNT>1)
Brak NULL-i w customer_id, order_date, total_amount_usd
Brak osieroconych customer_id (LEFT JOIN orders→customers, sprawdzone przez c.customer_id IS NULL)
discount_pct i quantity w sensownych zakresach (0-100 / brak ≤0) -->

<!-- Quality checks — customers:
Sprawdzone NULL-e tylko w surowych kolumnach: registration_date, country, age
Sprawdzony age pod kątem zakresu (1-140)
[tu wpisz swoje faktyczne wyniki tych dwóch zapytań] -->
</br>

## 5. Next Steps

<!--
- konwersja kolumn z datami z VARCHAR na DATE
- zbudowanie wspólnego VIEW łączącego orders + customers,
  na którym będą bazować zapytania KPI
- pisanie zapytań KPI (jedno na wskaźnik)
- walidacja wyników względem monthly_revenue / product_summary
-->
