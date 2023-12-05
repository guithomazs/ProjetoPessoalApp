import { Component, OnInit } from '@angular/core';
import { Compra } from 'src/app/model/compra';
import { ParticipanteService } from 'src/app/service/participante-service.service';

@Component({
  selector: 'app-compras-pagas',
  templateUrl: './compras-pagas.component.html',
  styleUrls: ['./compras-pagas.component.scss']
})
export class ComprasPagasComponent implements OnInit {

  constructor(private servico: ParticipanteService) {}
  
  ngOnInit(): void {
    this.get()
  }

  compras: Compra[] = Array<Compra>();

  get(): void  {
    this.servico.getPagas().subscribe({
      next: (resposta: Compra[]) => {
        this.compras = resposta
      },
      complete: () => {
        console.log(this.compras)
      }
    })
  }

}
