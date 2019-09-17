{literal}
{* <script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script> *}
<script type="text/javascript">
CRM.$(function($) {
  var gtag_vars = {/literal}{$gtagVars|@json_encode}{literal};
  window.dataLayer = window.dataLayer || [];
  function gtag() {
    dataLayer.push(arguments);
  }
  gtag('event', 'purchase', {
    "transaction_id": gtag_vars.transaction_id,
    "value": gtag_vars.value,
    "currency": gtag_vars.currency,
    "items": [
      {
        "id": gtag_vars.id,
        "name": gtag_vars.name,
        "brand": gtag_vars.brand,
        "category": gtag_vars.category,
        "variant": gtag_vars.variant,
      },
    ]
  });

  //gtag('config', 'GA_MEASUREMENT_ID');

});
</script>
{/literal}
