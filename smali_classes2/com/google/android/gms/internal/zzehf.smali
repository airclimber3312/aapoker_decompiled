.class final Lcom/google/android/gms/internal/zzehf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfv:Ljava/util/List;

.field private synthetic zznfw:Lcom/google/android/gms/internal/zzegx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Ljava/util/List;Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehf;->zznfv:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzehf;->zznfw:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    const-string v0, "Transaction"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zznfv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehy;

    sget v2, Lcom/google/android/gms/internal/zzehz;->zzngz:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzegx;->zzg(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeir;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzegx;->zzh(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeoz;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzehy;->zzg(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehf;->zznfw:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeng;->zzj(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzeng;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzehg;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/zzehg;-><init>(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    new-instance v3, Lcom/google/android/gms/internal/zzejp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzehy;->zzi(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegx;->zze(Lcom/google/android/gms/internal/zzegr;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzi(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzelc;->zzak(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzj(Lcom/google/android/gms/internal/zzegx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zznfw:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzn(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zznfv:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzehy;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/zzehz;->zznha:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/google/android/gms/internal/zzehz;->zznhb:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/google/android/gms/internal/zzehz;->zzngx:I

    :goto_3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zznfv:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehy;

    sget v1, Lcom/google/android/gms/internal/zzehz;->zznhb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    return-void
.end method
