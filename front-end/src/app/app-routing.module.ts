import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ComprasPagasComponent } from './component/compras-pagas/compras-pagas.component';
import { ComprasParticipadasComponent } from './component/compras-participadas/compras-participadas.component';
import { RegistroComprasComponent } from './component/registro-compras/registro-compras.component';
import { TabelaUsuarioComponent } from './component/tabela-usuario/tabela-usuario.component';
import { TableComponentComponent } from './component/table-component/table-component.component';

const routes: Routes = [
  // { path: 'tabela', component: TabelaUsuarioComponent },
  { path: 'tabela', component: TableComponentComponent },
  { path: 'pagas', component: ComprasPagasComponent },
  { path: 'participadas', component: ComprasParticipadasComponent },
  { path: 'registro', component: RegistroComprasComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {anchorScrolling: 'enabled'})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
