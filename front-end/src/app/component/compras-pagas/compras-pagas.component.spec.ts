import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ComprasPagasComponent } from './compras-pagas.component';

describe('ComprasPagasComponent', () => {
  let component: ComprasPagasComponent;
  let fixture: ComponentFixture<ComprasPagasComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ComprasPagasComponent]
    });
    fixture = TestBed.createComponent(ComprasPagasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
