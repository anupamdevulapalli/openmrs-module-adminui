<button ui-sref="edit">${ ui.message("uicommons.add") }</button>
<br/>
<br/>

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="encounterType in encounterTypes" ng-class="{ retired: encounterType.retired }">
        <td>{{encounterType.name}}</td>
        <td>{{encounterType.description}}</td>
        <td>
            <a ng-hide="encounterType.retired" ui-sref="edit({encounterTypeUuid: encounterType.uuid})">
                <i class="icon-pencil edit-action" title="${ui.message("emr.edit")}"></i>
            </a>
            <a ng-hide="encounterType.retired" ng-click="retire(encounterType)">
                <i class="icon-remove delete-action" title="${ui.message("emr.delete")}"></i>
            </a>
            <a ng-show="encounterType.retired" ng-click="unretire(encounterType)">
                <i class="icon-reply edit-action" title="${ui.message("uicommons.unretire")}"></i>
            </a>
        </td>
    </tr>
    </tbody>
</table>