import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { TableComponentComponent } from './component/table-component/table-component.component';
import { ComprasPagasComponent } from './component/compras-pagas/compras-pagas.component';
import { ComprasParticipadasComponent } from './component/compras-participadas/compras-participadas.component';
import { RegistroComprasComponent } from './component/registro-compras/registro-compras.component';
import { TabelaUsuarioComponent } from './component/tabela-usuario/tabela-usuario.component';

@NgModule({
  declarations: [
    AppComponent,
    TableComponentComponent,
    ComprasPagasComponent,
    ComprasParticipadasComponent,
    RegistroComprasComponent,
    TabelaUsuarioComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
