import { Component, OnInit } from "@angular/core";
import { Item } from "./item";
import { ListService } from "./list.service";


@Component ({
    selector: 'ml-list',
    templateUrl: 'list.component.html'
})
export class ListComponent implements OnInit{

    constructor (private listService: ListService ) {

    }
    
    items: Item[] = [];
    
    ngOnInit(): void {
        // this.items = this.listService.listByID();

        this.listService
      .listByID()
      .subscribe(items => {
        this.items = items;
      });
    }

}