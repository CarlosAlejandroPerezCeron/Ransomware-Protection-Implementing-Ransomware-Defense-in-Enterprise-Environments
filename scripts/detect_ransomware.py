import os
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

class RansomwareDetector(FileSystemEventHandler):
    def on_modified(self, event):
        if event.src_path.endswith((".encrypted", ".locked")):
            print(f"⚠️ Posible ransomware detectado: {event.src_path}")

if __name__ == "__main__":
    path = "/home/user/important_files"  # Cambia a la ruta que deseas monitorear
    event_handler = RansomwareDetector()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=True)
    observer.start()
    
    try:
        while True:
            time.sleep(10)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
