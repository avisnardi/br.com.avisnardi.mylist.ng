import { Component } from "@angular/core";
import { Item } from "./item";


@Component ({
    selector: 'ml-list',
    templateUrl: 'list.component.html'
})
export class ListComponent {

    items: Item[] = [
        {id: 1, name: 'Morena Tropicana'},
        {id: 2, name: 'Eu só quero um xodó'},
        {id: 3, name: 'Feira de Mangaio'},
        
];

}