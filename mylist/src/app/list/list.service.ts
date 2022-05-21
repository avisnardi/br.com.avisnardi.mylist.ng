import { HttpClient } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Item } from "./item";


const API = 'http://localhost:3000';
@Injectable({ providedIn: 'root' })

export class ListService {

    constructor(private http: HttpClient) {}

    items: Item[] = [
        {id: 1, name: 'Morena Tropicana'},
        {id: 2, name: 'Eu só quero um xodó'},
        {id: 3, name: 'Feira de Mangaio'},
        
];

    listByID () {
        // return this.items;

        return this.http
            .get<Item[]>(API +  '/lista'); 
    }
}