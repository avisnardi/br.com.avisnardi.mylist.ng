import { HttpClient } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Item } from "./item";


const API = 'http://localhost:3000';


@Injectable({ providedIn: 'root' })

export class ListService {

    constructor(private http: HttpClient) {}

    listByID () {

        return this.http.get<Item[]>(API +  '/catalog'); 
    }
}