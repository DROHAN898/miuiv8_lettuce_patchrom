.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewProvider.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

.field static final TRANSACTION_alterWindow:I = 0xa

.field static final TRANSACTION_onAttach:I = 0x1

.field static final TRANSACTION_onBouncerShowing:I = 0x5

.field static final TRANSACTION_onDetach:I = 0x2

.field static final TRANSACTION_onKeyguardDismissed:I = 0x4

.field static final TRANSACTION_onKeyguardShowing:I = 0x3

.field static final TRANSACTION_onLockscreenSlideOffsetChanged:I = 0xb

.field static final TRANSACTION_onScreenTurnedOff:I = 0x7

.field static final TRANSACTION_onScreenTurnedOn:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    return-object v0

    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onAttach(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_2
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onDetach()V

    const/4 v0, 0x1

    return v0

    :sswitch_3
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardShowing(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardDismissed()V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onBouncerShowing(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOn()V

    const/4 v0, 0x1

    return v0

    :sswitch_7
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOff()V

    const/4 v0, 0x1

    return v0

    :sswitch_8
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    const/4 v0, 0x1

    return v0

    :sswitch_9
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    const/4 v0, 0x1

    return v0

    :sswitch_a
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->alterWindow(IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :sswitch_b
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p0, v7}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onLockscreenSlideOffsetChanged(F)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
