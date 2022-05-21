import { CommonModule } from "@angular/common";
import { HttpClientModule } from "@angular/common/http";
import { NgModule } from "@angular/core";
import { ListComponent } from "./list.component";

@NgModule({
    declarations: [ListComponent],
    imports: [
        CommonModule,
        HttpClientModule
    ],
    exports: [ ListComponent ]
})
export class ListModule { }