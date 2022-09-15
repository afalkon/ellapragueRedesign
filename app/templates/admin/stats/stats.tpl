<main class="adminPage">
    <section class="admin__main">
    <h2 class="admin__messages--heading">Статистика посещений сайта</h2>
    <div id="curve_chart" class="admin__chart--devicesChart__wide"></div>
    <div class="admin__chratWrapper">
        <div data-attribute='<?=$devicesJson?>' id="donutchart" class="admin__chart--devicesChart"></div>
        <div id="regions_div" class="admin__chart--devicesChart"></div>
        
    </div>
        <p>Уникальных посетителей: <?=count($allVisitors)?></p>
        <p>Количество сессий: <?=$sessionsNum?></p>
        <p>Посещений с мобильных устройств: <?=$mobiles?></p>
        <p>Посещений с планшетов: <?=$tablets?></p>
        <p>Посещений с ПК: <?=$desktops?></p>
    </section>
</main>