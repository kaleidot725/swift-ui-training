import SwiftUI

struct ContentView: View {
    @State private var journal = Journal()

    var body: some View {
        NavigationStack {
            List(journal.entries) { entry in
                NavigationLink(value: entry) {
                    JournalEntryListItem(journalEntry: entry)
                }
            }
            .navigationDestination(for: JournalEntry.self) { entry in
                JournalEntryView(journalEntry: entry)
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addSampleEntry()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
