.class public Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
.super Lorg/cyanogenmod/platform/internal/ManagedServices;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTileListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPosted(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemoved(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 4

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get3(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/cyanogenmod/platform/internal/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;)V

    return-void
.end method

.method private notifyPosted(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 6

    iget-object v1, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcyanogenmod/app/ICustomTileListener;

    new-instance v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    :try_start_0
    invoke-interface {v1, v2}, Lcyanogenmod/app/ICustomTileListener;->onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRemoved(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 6

    invoke-virtual {p2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcyanogenmod/app/ICustomTileListener;

    new-instance v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    :try_start_0
    invoke-interface {v1, v2}, Lcyanogenmod/app/ICustomTileListener;->onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcyanogenmod/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
    .locals 2

    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;-><init>()V

    const-string/jumbo v1, "custom tile listener"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->caption:Ljava/lang/String;

    const-string/jumbo v1, "cyanogenmod.app.CustomTileListenerService"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    const-string/jumbo v1, "cyanogenmod.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    const v1, 0x3f080025

    iput v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->clientLabel:I

    return-object v0
.end method

.method public notifyPostedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 9

    const/4 v4, 0x0

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v7, p1, v0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-eqz p2, :cond_3

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v7, p2, v0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    if-eqz v6, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v4

    move-object v5, v4

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;

    invoke-direct {v8, p0, v0, v5}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v2

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;

    invoke-direct {v8, p0, v0, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public notifyRemovedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 5

    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v3, v2, v0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;

    invoke-direct {v4, p0, v0, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onServiceAdded(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 2

    iget-object v1, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcyanogenmod/app/ICustomTileListener;

    :try_start_0
    invoke-interface {v1}, Lcyanogenmod/app/ICustomTileListener;->onListenerConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    return-void
.end method
